.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$PxDf76v5kbscyhBqkVxRT_vLxqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$PxDf76v5kbscyhBqkVxRT_vLxqI;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$PxDf76v5kbscyhBqkVxRT_vLxqI;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$flingSettings$7$NotificationPanelViewController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
