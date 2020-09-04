.class public Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 866
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 861
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 863
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method
