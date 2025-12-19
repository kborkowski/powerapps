fxRandomImage():Hyperlink = $"https://lipsum.app/id/{RandBetween(1,99)}/1600x900";

fxData = Table(
    {
        ItemKey: "item1",
        ItemTitle: "Discover New Horizons",
        ItemDescription: "Explore innovative solutions that transform the way you work and collaborate with your team.",
        ItemButtonText: "Learn More",
        ItemImage: fxRandomImage()
    },
    {
        ItemKey: "item2",
        ItemTitle: "Boost Your Productivity",
        ItemDescription: "Streamline your workflow with powerful tools designed to save time and increase efficiency.",
        ItemButtonText: "Get Started",
        ItemImage: fxRandomImage()
    },
    {
        ItemKey: "item3",
        ItemTitle: "Connect With Your Audience",
        ItemDescription: "Build meaningful relationships and engage customers through personalized experiences.",
        ItemButtonText: "Start Connecting",
        ItemImage: fxRandomImage()
    },
    {
        ItemKey: "item4",
        ItemTitle: "Secure Your Data",
        ItemDescription: "Protect your business with enterprise-grade security features and compliance standards.",
        ItemButtonText: "View Security",
        ItemImage: fxRandomImage()
    },
    {
        ItemKey: "item5",
        ItemTitle: "Scale With Confidence",
        ItemDescription: "Grow your business without limits using cloud-based infrastructure that adapts to your needs.",
        ItemButtonText: "",
        ItemImage: fxRandomImage()
    }
);
