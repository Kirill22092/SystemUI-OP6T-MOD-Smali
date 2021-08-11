.class public Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BubbleOverflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleOverflowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public iconView:Lcom/android/systemui/bubbles/BadgedImageView;

.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/android/systemui/R$id;->bubble_view:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/systemui/bubbles/BadgedImageView;

    sget v0, Lcom/android/systemui/R$id;->bubble_view_name:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method
