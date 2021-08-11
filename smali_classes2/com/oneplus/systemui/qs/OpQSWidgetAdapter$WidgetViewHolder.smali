.class Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OpQSWidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetViewHolder"
.end annotation


# instance fields
.field private final mIcon:Landroid/widget/ImageView;

.field private final mRootView:Landroid/view/View;

.field private final mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mRootView:Landroid/view/View;

    sget p1, Lcom/android/systemui/R$id;->op_qs_widget_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mIcon:Landroid/widget/ImageView;

    sget p1, Lcom/android/systemui/R$id;->op_qs_widget_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 p2, 0x12

    invoke-static {p2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mText:Landroid/widget/TextView;

    const/16 p2, 0x13

    invoke-static {p2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mRootView:Landroid/view/View;

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/android/systemui/R$drawable;->op_qs_widget_bg_light:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/systemui/R$drawable;->op_qs_red_all:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->op_qs_widget_bg_dark:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->setInfo(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V

    return-void
.end method

.method private setInfo(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$200(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$300(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$WidgetViewHolder;->mRootView:Landroid/view/View;

    invoke-static {p1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;->access$400(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
