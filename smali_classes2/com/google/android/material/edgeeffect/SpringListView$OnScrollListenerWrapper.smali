.class Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringListView;


# direct methods
.method constructor <init>(Lcom/google/android/material/edgeeffect/SpringListView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    iget-object v0, v0, Lcom/google/android/material/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$000(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    instance-of p3, p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p3, p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$002(Lcom/google/android/material/edgeeffect/SpringListView;Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$000(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$000(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$100(Lcom/google/android/material/edgeeffect/SpringListView;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p0, p3}, Lcom/google/android/material/edgeeffect/SpringListView;->access$102(Lcom/google/android/material/edgeeffect/SpringListView;Z)Z

    return-void

    :cond_3
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    const/4 p4, 0x2

    if-eq p1, p4, :cond_4

    if-eq p1, p2, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    const/high16 p4, 0x41a00000    # 20.0f

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$200(Lcom/google/android/material/edgeeffect/SpringListView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$300(Lcom/google/android/material/edgeeffect/SpringListView;)F

    move-result p1

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->computeVelocity()F

    move-result p1

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$400(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringEffectListener;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$400(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringEffectListener;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/google/android/material/edgeeffect/SpringEffectListener;->onStart(I)V

    :cond_6
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/google/android/material/edgeeffect/SpringListView;->access$500(Lcom/google/android/material/edgeeffect/SpringListView;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {v2}, Lcom/google/android/material/edgeeffect/SpringListView;->access$600(Lcom/google/android/material/edgeeffect/SpringListView;)F

    move-result v2

    div-float/2addr p1, p4

    invoke-static {p3, v1, v0, v2, p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$700(Lcom/google/android/material/edgeeffect/SpringListView;FFFF)V

    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/google/android/material/edgeeffect/SpringListView;->access$800(Lcom/google/android/material/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/google/android/material/edgeeffect/SpringListView;->access$800(Lcom/google/android/material/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p3

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$200(Lcom/google/android/material/edgeeffect/SpringListView;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$300(Lcom/google/android/material/edgeeffect/SpringListView;)F

    move-result p1

    cmpg-float p3, p1, v0

    if-gtz p3, :cond_8

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringListView;->computeVelocity()F

    move-result p1

    :cond_8
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/google/android/material/edgeeffect/SpringListView;->access$400(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringEffectListener;

    move-result-object p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/google/android/material/edgeeffect/SpringListView;->access$400(Lcom/google/android/material/edgeeffect/SpringListView;)Lcom/google/android/material/edgeeffect/SpringEffectListener;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/material/edgeeffect/SpringEffectListener;->onStart(I)V

    :cond_9
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView;->access$500(Lcom/google/android/material/edgeeffect/SpringListView;)F

    move-result p3

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$600(Lcom/google/android/material/edgeeffect/SpringListView;)F

    move-result v1

    div-float/2addr p1, p4

    invoke-static {p2, p3, v0, v1, p1}, Lcom/google/android/material/edgeeffect/SpringListView;->access$700(Lcom/google/android/material/edgeeffect/SpringListView;FFFF)V

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView;->access$900(Lcom/google/android/material/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringListView;->access$900(Lcom/google/android/material/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_a
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView;

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
