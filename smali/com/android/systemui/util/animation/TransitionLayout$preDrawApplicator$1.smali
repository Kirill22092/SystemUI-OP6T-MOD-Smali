.class public final Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;
.super Ljava/lang/Object;
.source "TransitionLayout.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/animation/TransitionLayout;->access$setUpdateScheduled$p(Lcom/android/systemui/util/animation/TransitionLayout;Z)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->access$applyCurrentState(Lcom/android/systemui/util/animation/TransitionLayout;)V

    const/4 p0, 0x1

    return p0
.end method
