.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$VRFcZ95NRiYdJpC4k7VGsDGQNaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$VRFcZ95NRiYdJpC4k7VGsDGQNaE;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$VRFcZ95NRiYdJpC4k7VGsDGQNaE;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$4$OverviewProxyService()V

    return-void
.end method
