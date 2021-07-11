.class Lcom/android/systemui/statusbar/phone/PanelViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;->runPeekAnimation(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field final synthetic val$collapseWhenFinished:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->val$collapseWhenFinished:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$002(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 269
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->mCancelled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->val$collapseWhenFinished:Z

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
