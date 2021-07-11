.class Lcom/android/systemui/bubbles/BubbleOverflowAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BubbleOverflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPromoteBubbleFromOverflow:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;II)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    .line 233
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mPromoteBubbleFromOverflow:Ljava/util/function/Consumer;

    .line 234
    iput p4, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mWidth:I

    .line 235
    iput p5, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleOverflowAdapter;)Landroid/content/Context;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/android/systemui/bubbles/Bubble;Landroid/view/View;)V
    .locals 0

    .line 273
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 275
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mPromoteBubbleFromOverflow:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$BubbleOverflowAdapter(Lcom/android/systemui/bubbles/Bubble;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->lambda$onBindViewHolder$0(Lcom/android/systemui/bubbles/Bubble;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 220
    check-cast p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->onBindViewHolder(Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;I)V
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bubbles/Bubble;

    .line 270
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    .line 271
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/systemui/bubbles/BadgedImageView;

    sget-object v1, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V

    .line 272
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/systemui/bubbles/BadgedImageView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;-><init>(Lcom/android/systemui/bubbles/BubbleOverflowAdapter;Lcom/android/systemui/bubbles/Bubble;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->notification_bubble_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/systemui/bubbles/BadgedImageView;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_content_description_single:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 282
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/systemui/bubbles/BadgedImageView;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$1;-><init>(Lcom/android/systemui/bubbles/BubbleOverflowAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 301
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 302
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object p0

    .line 304
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;
    .locals 2

    .line 243
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->bubble_overflow_view:I

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 245
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 248
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mWidth:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 249
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mHeight:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 250
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, -0x1

    .line 255
    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 257
    invoke-static {v1, p2, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result p2

    .line 258
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    sget p0, Lcom/android/systemui/R$id;->bubble_view_name:I

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 261
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    new-instance p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;)V

    return-object p0

    :array_0
    .array-data 4
        0x10104e2
        0x1010036
    .end array-data
.end method
