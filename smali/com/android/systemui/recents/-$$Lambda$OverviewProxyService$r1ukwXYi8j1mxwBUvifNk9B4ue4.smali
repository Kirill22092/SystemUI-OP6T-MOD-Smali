.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$r1ukwXYi8j1mxwBUvifNk9B4ue4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$r1ukwXYi8j1mxwBUvifNk9B4ue4;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$r1ukwXYi8j1mxwBUvifNk9B4ue4;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    check-cast p1, Ldagger/Lazy;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$1$OverviewProxyService(Ldagger/Lazy;)V

    return-void
.end method
