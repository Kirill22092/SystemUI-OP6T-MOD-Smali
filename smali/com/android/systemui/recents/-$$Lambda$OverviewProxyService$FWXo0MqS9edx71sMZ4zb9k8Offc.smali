.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$FWXo0MqS9edx71sMZ4zb9k8Offc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$FWXo0MqS9edx71sMZ4zb9k8Offc;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$FWXo0MqS9edx71sMZ4zb9k8Offc;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$FWXo0MqS9edx71sMZ4zb9k8Offc;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$FWXo0MqS9edx71sMZ4zb9k8Offc;->f$1:Landroid/view/MotionEvent;

    check-cast p1, Ldagger/Lazy;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$dispatchLauncherTouch$5$OverviewProxyService(Landroid/view/MotionEvent;Ldagger/Lazy;)V

    return-void
.end method
