.class public Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ConversationIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/notification/ConversationIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationIconDrawable"
.end annotation


# instance fields
.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private mBaseIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private mPaddingPaint:Landroid/graphics/Paint;

.field private mRingPaint:Landroid/graphics/Paint;

.field private mShowRing:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    iput-boolean p5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mShowRing:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42600000    # 56.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/android/settingslib/notification/ConversationIconFactory;->access$000()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42500000    # 52.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/android/settingslib/notification/ConversationIconFactory;->access$100()F

    move-result v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    const-string v6, "ConversationIconFactory"

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const-string v5, "ConversationIconDrawable has null base icon"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    int-to-float v5, v4

    iget-object v6, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    const-string v2, "ConversationIconDrawable has null badge icon"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mShowRing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v1, v4

    iget-object p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
