.class Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryIconDrawable"
.end annotation


# instance fields
.field final baseIcon:Landroid/graphics/drawable/Drawable;

.field final dp:F

.field limit:J

.field final paint:Landroid/graphics/Paint;

.field rss:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 292
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    .line 296
    sget v0, Lcom/android/systemui/R$drawable;->ic_memory:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    .line 298
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 317
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->rss:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    long-to-float v2, v4

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 320
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 322
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 323
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v7, 0x0

    .line 325
    iget v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->dp:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v4, v2, v3

    sub-float v1, v0, v1

    mul-float v8, v4, v1

    mul-float/2addr v5, v2

    add-float v9, v5, v0

    mul-float/2addr v2, v3

    add-float v10, v2, v0

    iget-object v11, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 331
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setLimit(J)V
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 310
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    .line 311
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setRss(J)V
    .locals 2

    .line 302
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->rss:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 303
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->rss:J

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 365
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->baseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
