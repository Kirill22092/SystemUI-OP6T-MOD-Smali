.class public Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 280
    iget-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 283
    iget p0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {p1, p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->access$101(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/oneplus/lib/app/appcompat/AbsActionBarView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->access$001(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V

    .line 275
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method
