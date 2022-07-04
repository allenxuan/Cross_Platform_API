import os.path

project_root = os.path.dirname(os.path.dirname(__file__))
print('project root path: ' + project_root)
import sys

sys.path.append('../cross_platform_lib/swig/gen/python')
print(sys.path)
import CrossPlatformApi as cpa

print("Hello")


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


# Defining main function
def main():
    print("--------PythonDemo test start--------")
    cases.run()
    print("--------PythonDemo test end--------")


# Using the special variable
# __name__
if __name__ == "__main__":
    main()
