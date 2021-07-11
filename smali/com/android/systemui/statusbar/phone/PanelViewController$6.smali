.class Lcom/android/systemui/statusbar/phone/PanelViewController$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1134
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 1135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 1136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1138
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$6;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$600(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
