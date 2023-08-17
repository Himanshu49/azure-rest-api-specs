import "./main.tsp";
import "@azure-tools/typespec-client-generator-core";

using TypeSpec.Versioning;
using Azure.ClientGenerator.Core;
using AzureLoadTesting;

@useDependency(APIVersions.v2022_11_01)
namespace Customizations;

@client({
    name: "LoadTestAdministrationClient",
    service: AzureLoadTesting,
})
interface AdministrationOperations {
    CreateOrUpdateTest is LoadTestAdministration.createOrUpdateTest;
    CreateOrUpdateAppComponents is LoadTestAdministration.createOrUpdateAppComponents;
    CreateOrUpdateServerMetricsConfig is LoadTestAdministration.createOrUpdateServerMetricsConfig;
    GetAppComponents is LoadTestAdministration.getAppComponents;
    GetServerMetricsConfig is LoadTestAdministration.getServerMetricsConfig;
    GetTest is LoadTestAdministration.getTest;
    GetTestFile is LoadTestAdministration.getTestFile;
    ListTestFiles is LoadTestAdministration.listTestFiles;
    ListTests is LoadTestAdministration.listTests;
    UploadTestFile is LoadTestAdministration.uploadTestFile;
    DeleteTestFile is LoadTestAdministration.deleteTestFile;
    DeleteTest is LoadTestAdministration.deleteTest;
};

@client({
    name: "LoadTestRunClient",
    service: AzureLoadTesting,
})
interface TestRunOperations {
    TestRun is LoadTestRun.createOrUpdateTestRun;
    CreateOrUpdateAppComponents is LoadTestRun.createOrUpdateAppComponents;
    CreateOrUpdateServerMetricsConfig is LoadTestRun.createOrUpdateServerMetricsConfig;
    DeleteTestRun is LoadTestRun.deleteTestRun;
    GetAppComponents is LoadTestRun.getAppComponents;
    GetServerMetricsConfig is LoadTestRun.getServerMetricsConfig;
    GetTestRun is LoadTestRun.getTestRun;
    GetTestRunFile is LoadTestRun.getTestRunFile;
    ListMetricDimensionValues is LoadTestRun.listMetricDimensionValues;
    ListMetricDefinitions is LoadTestRun.listMetricDefinitions;
    ListMetricNamespaces is LoadTestRun.listMetricNamespaces;
    ListMetrics is LoadTestRun.listMetrics;
    ListTestRuns is LoadTestRun.listTestRuns;
    StopTestRun is LoadTestRun.stopTestRun;
};
