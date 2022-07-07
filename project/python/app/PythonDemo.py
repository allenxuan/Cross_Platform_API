import os.path

project_root = os.path.dirname(os.path.dirname(__file__))
print('project root path: ' + project_root)
import sys

sys.path.append('../cross_platform_lib/swig/gen/python')
print(sys.path)
import CrossPlatformApi as cpa


class TestCase:
    def run(self):
        pass


class TestCollections(TestCase):
    def __init__(self):
        self.cases = {}

    def run(self):
        for caseName, case in self.cases.items():
            try:
                case.run()
                print(f"✅ TestCase[{caseName}]  Pass")
            except Exception as e:
                print(f"❌ TestCase[{caseName}]  EXCEPTION: " + str(e))

    def append(self, caseName, case):
        self.cases[caseName] = case


cases = TestCollections()


class TestSimpleUse(TestCase):
    def run(self):
        apiCenter = cpa.ApiCenter()
        ### primitives start ###
        apiCenter.setUint64(123456)
        a_unit64 = apiCenter.getUnit64()

        apiCenter.setFloat(123.4)
        a_float = apiCenter.getFloat()

        apiCenter.setBool(True)
        a_bool = apiCenter.getBool()
        ### primitives end ###

        ### string start ###
        apiCenter.setString("abc")
        a_string = apiCenter.getString()
        ### string end ###

        ### containers start ###
        strVec = cpa.StrVec()
        apiCenter.setStringVector(strVec)
        a_str_vec = apiCenter.getStringVector()

        dataVec = cpa.DataVec()
        apiCenter.setDataVector(dataVec)
        a_data_vec = apiCenter.getDataVectorRef()

        dataSharedPtrVec = cpa.DataSharePtrVec()
        apiCenter.setDataSharedPtrVector(dataSharedPtrVec)
        a_data_shared_ptr_vec = apiCenter.getDataSharedPtrVector()

        dataMap = cpa.DataMap()
        apiCenter.setDataMap(dataMap)
        a_data_map = apiCenter.getDataMapRef()

        dataSharedPtrMap = cpa.DataSharePtrMap()
        apiCenter.setDataSharedPtrMap(dataSharedPtrMap)
        a_data_shared_ptr_map = apiCenter.getDataSharedPtrMap()

        # CAUTION: had better use DataSharedPtrPair
        dataPair = cpa.DataPair()  # dataPair.second is type of std::shared_ptr<Data>
        # CAUTION: setDataPair NOT SUPPORTED
        # type conversion error from std::pair< std::string,std::shared_ptr<Data> > to std::pair< std::string,Data >
        # apiCenter.setDataPair(dataPair)
        a_data_pair = apiCenter.getDataPairRef()
        a_data_pair.first = "a_data_pair_key"
        a_data_pair.second.a_data = "a_data_pair_value"

        data = cpa.Data()
        data.a_data = "a_data_string"
        dataSharedPtrPair = ("dataSharedPtrPair_key", data)
        apiCenter.setDataSharedPtrPair(dataSharedPtrPair)
        a_data_shared_ptr_pair = apiCenter.getDataSharedPtrPair()
        ### containers end ###


cases.append("TestSimpleUse", TestSimpleUse())


class TestPolymorphism(TestCase):
    def run(self):
        apiCenter = cpa.ApiCenter()
        ### polymorphism start
        dataSharedPtrVec = apiCenter.getDataSharedPtrVector()

        data = cpa.Data()
        data.a_data = "a_data_string"
        dataSharedPtrVec = dataSharedPtrVec + (data,)

        dataChild = cpa.DataChild()
        dataChild.a_data = "a_data_string"
        dataChild.a_child_data = True
        dataSharedPtrVec = dataSharedPtrVec + (dataChild,)

        dataGrandChild = cpa.DataGrandChild()
        dataGrandChild.a_data = "a_data_string"
        dataGrandChild.a_child_data = True
        dataGrandChild.a_grand_child_data = 5.6
        dataSharedPtrVec = dataSharedPtrVec + (dataGrandChild,)

        apiCenter.setDataSharedPtrVector(dataSharedPtrVec)
        gotDataSharedPtrVec = apiCenter.getDataSharedPtrVector()
        gotDataChild = cpa.DataChild.DynamicCast(gotDataSharedPtrVec[1])
        assert (gotDataChild is not None)
        assert (gotDataChild.a_data == "a_data_string")
        assert (gotDataChild.a_child_data == True)
        gotDataGrandChild = cpa.DataGrandChild.DynamicCast(gotDataSharedPtrVec[2])
        assert (gotDataGrandChild is not None)
        assert (gotDataGrandChild.a_data == "a_data_string")
        assert (gotDataGrandChild.a_child_data == True)
        assert (abs(gotDataGrandChild.a_grand_child_data - 5.6) < 0.000001)
        ### polymorphism end


cases.append("TestPolymorphism", TestPolymorphism())


class TestEnums(TestCase):
    def run(self):
        apiCenter = cpa.ApiCenter()
        ### enums start
        dataChild = cpa.DataChild()
        dataChild.type = cpa.kType2
        dataGrandChild = cpa.DataGrandChild()
        dataGrandChild.type = cpa.kType3
        ### enums end


cases.append("TestEnums", TestEnums())


# Defining main function
def main():
    print("--------PythonDemo test start--------")
    cases.run()
    print("--------PythonDemo test end--------")


# Using the special variable
# __name__
if __name__ == "__main__":
    main()
