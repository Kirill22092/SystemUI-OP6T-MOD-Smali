.class Lcom/android/systemui/bubbles/BubbleOverflowActivity$NoScrollGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "BubbleOverflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleOverflowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoScrollGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleOverflowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleOverflowActivity;Landroid/content/Context;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity$NoScrollGridLayoutManager;->this$0:Lcom/android/systemui/bubbles/BubbleOverflowActivity;

    .line 70
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowActivity$NoScrollGridLayoutManager;->this$0:Lcom/android/systemui/bubbles/BubbleOverflowActivity;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleOverflowActivity;->access$000(Lcom/android/systemui/bubbles/BubbleOverflowActivity;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController;->inLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 83
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    return p0
.end method
