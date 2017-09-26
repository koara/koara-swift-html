import Koara
import Nimble
import Quick

class ComplianceTests: QuickSpec {

    override public func spec() {
        describe("ComplianceTest") {
            let testsuite = URL(fileURLWithPath: #file).deletingLastPathComponent().deletingLastPathComponent().appendingPathComponent("testsuite")
            let modules = FileManager.default.enumerator(at: testsuite.appendingPathComponent("input"), includingPropertiesForKeys: [], options: [.skipsHiddenFiles])


            while let url = modules?.nextObject() as? URL {
                if(url.lastPathComponent.hasSuffix(".kd") && !url.lastPathComponent.hasPrefix("end2end")) {
                    let module = url.pathComponents[url.pathComponents.count - 2]
                    let testcase = url.lastPathComponent.substring(to: url.lastPathComponent.index(url.lastPathComponent.endIndex, offsetBy: -3))

                    it("KoaraToHtml_\(testcase)") {
                        let parser = Parser()
                    }
                }
            }

        }
    }
    
}
