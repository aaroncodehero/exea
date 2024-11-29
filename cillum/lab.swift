enum TemplateRenderingMode {
    case modeA
    case modeB
    case modeC
}

extension TemplateRenderingMode: Hashable {
    func hash(into hasher: inout Hasher) {
        switch self {
        case .modeA:
            hasher.combine(1)
        case .modeB:
            hasher.combine(2)
        case .modeC:
            hasher.combine(3)
        }
    }
}

// Usage:
var modeMap: [TemplateRenderingMode: String] = [:]

modeMap[.modeA] = "Mode A"
modeMap[.modeB] = "Mode B"
modeMap[.modeC] = "Mode C"

print(modeMap) // Output: [.modeB: "Mode B", .modeC: "Mode C", .modeA: "Mode A"]
