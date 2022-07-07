//
// Created by Xuanyi Huang on 2022/4/7.
//
#include <iostream>
#include <external_layer/cross_platform_api.h>
#include <gtest/gtest.h>

namespace unit_test {
    class UnitTest : public ::testing::Test {
    protected:
        // You can remove any or all of the following functions if their bodies would
        // be empty.

        UnitTest() {
            // You can do set-up work for each test here.
        }

        ~UnitTest() override {
            // You can do clean-up work that doesn't throw exceptions here.
        }

        // If the constructor and destructor are not enough for setting up
        // and cleaning up each test, you can define the following methods:

        void SetUp() override {
            // Code here will be called immediately after the constructor (right
            // before each test).
        }

        void TearDown() override {
            // Code here will be called immediately after each test (right
            // before the destructor).
        }

        // Class members declared here can be used by all tests in the test suite
        // for UnitTest.
        std::unique_ptr<cross_platform_external::ApiCenter> api_center = std::make_unique<cross_platform_external::ApiCenter>();
    };


    TEST_F(UnitTest, SimpleUse) {
        api_center->setUint64(321312);
        std::vector<std::string> a_string_vec;
        a_string_vec.emplace_back("0");
        a_string_vec.emplace_back("1");
        api_center->setStringVector(a_string_vec);
        auto string_vec = api_center->getStringVector();
        EXPECT_EQ(string_vec[0], "0");
        EXPECT_EQ(string_vec[1], "1");
    }

    TEST_F(UnitTest, Polymorphism) {
        std::vector<std::shared_ptr<cross_platform_common::Data>> aDataSharedPtrVec;
        auto aDataChild = std::make_shared<cross_platform_common::DataChild>();
        aDataChild->a_data = "data child";
        aDataChild->a_child_data = true;
        aDataSharedPtrVec.push_back(aDataChild);
        auto aDataGrandChild = std::make_shared<cross_platform_common::DataGrandChild>();
        aDataGrandChild->a_data = "data grand child";
        aDataGrandChild->a_child_data = true;
        aDataGrandChild->a_grand_child_data = 8.8f;
        aDataSharedPtrVec.push_back(aDataGrandChild);
        api_center->setDataSharedPtrVector(aDataSharedPtrVec);

        auto dataSharedPtrVec = api_center->getDataSharedPtrVector();
        EXPECT_EQ(dataSharedPtrVec.size(), 2);
        auto dataChild = cross_platform_common::DataChild::DynamicCast(dataSharedPtrVec[0]);
        EXPECT_TRUE(dataChild != nullptr);
        auto v1 = dataChild->a_data;
        EXPECT_EQ(v1, "data child");
        auto v2 = dataChild->a_child_data;
        EXPECT_EQ(v2, true);
        auto dataGrandChild = cross_platform_common::DataGrandChild::DynamicCast(dataSharedPtrVec[1]);
        EXPECT_TRUE(dataGrandChild != nullptr);
        auto v3 = dataGrandChild->a_data;
        EXPECT_EQ(v3, "data grand child");
        auto v4 = dataGrandChild->a_child_data;
        EXPECT_EQ(v4, true);
        auto v5 = dataGrandChild->a_grand_child_data;
        EXPECT_EQ(v5, 8.8f);
    }

}


int main(int argc, char *args[]) {
    ::testing::InitGoogleTest(&argc, args);
    return RUN_ALL_TESTS();
}

