import { describe, it, expect } from "vitest";
import { mount } from "@vue/test-utils";
import Quote from "../Quote.vue";

describe("Quote", () => {
    it("renders properly", () => {
        const wrapper = mount(Quote, { props: { name: "test name", text: "test text"}});
        expect(wrapper.text()).toContain("test text");
    });
});

