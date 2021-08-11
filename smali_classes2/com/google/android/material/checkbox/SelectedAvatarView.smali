.class public Lcom/google/android/material/checkbox/SelectedAvatarView;
.super Landroid/widget/ImageView;
.source "SelectedAvatarView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckMarkBackgroundColor:I

.field private mCheckMarkColor:I

.field private mChecked:Z

.field private mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mChecked:Z

    invoke-direct {p0, p1}, Lcom/google/android/material/checkbox/SelectedAvatarView;->initForFlipRes(Landroid/content/Context;)V

    return-void
.end method

.method private applyCheckState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mChecked:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/libs/FlipDrawable;->flipTo(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->reset()V

    :cond_0
    return-void
.end method

.method private initForFlipRes(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_avatar_checked_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setCheckMarkBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->op_avatar_checked_marker:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setCheckMarkColor(I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mChecked:Z

    return p0
.end method

.method public setCheckMarkBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mCheckMarkBackgroundColor:I

    iget-object p0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->setCheckMarkBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setCheckMarkColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mCheckMarkColor:I

    iget-object p0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->setCheckMarkColor(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mChecked:Z

    invoke-direct {p0, p2}, Lcom/google/android/material/checkbox/SelectedAvatarView;->applyCheckState(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mCheckMarkBackgroundColor:I

    iget v5, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mCheckMarkColor:I

    const/16 v6, 0x96

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/checkbox/CheckableFlipDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;III)V

    iput-object v0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/checkbox/SelectedAvatarView;->applyCheckState(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->setFront(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/checkbox/SelectedAvatarView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setChecked(Z)V

    return-void
.end method
