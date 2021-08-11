.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$InH1YHCYbFS1oQ8661noD2sY0tQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthPanelController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$InH1YHCYbFS1oQ8661noD2sY0tQ;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$InH1YHCYbFS1oQ8661noD2sY0tQ;->f$0:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->lambda$updateForContentDimensions$3$AuthPanelController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
