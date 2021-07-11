.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "KeyguardUserSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserView:Landroid/view/View;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    .line 271
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 272
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    .line 273
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 311
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_0

    .line 314
    sget v1, Lcom/android/systemui/R$color;->kg_user_switcher_selected_avatar_icon_color:I

    goto :goto_0

    .line 315
    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-nez v1, :cond_1

    .line 316
    sget v1, Lcom/android/systemui/R$color;->GM2_grey_600:I

    goto :goto_0

    .line 318
    :cond_1
    sget v1, Lcom/android/systemui/R$color;->kg_user_switcher_avatar_icon_color:I

    .line 320
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 322
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz p1, :cond_2

    .line 323
    sget p1, Lcom/android/systemui/R$drawable;->bg_avatar_selected:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 324
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object p1

    .line 279
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->keyguard_user_switcher_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 283
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_1
    check-cast p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 287
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object p3

    .line 288
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 291
    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->kg_framed_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 292
    new-instance v1, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 294
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getDisabledUserAvatarColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 293
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 295
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3, v1, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 297
    :goto_1
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setActivated(Z)V

    .line 298
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setDisabledByAdmin(Z)V

    .line 299
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 300
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const p3, 0x3ec28f5c    # 0.38f

    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 302
    iget-boolean p3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz p3, :cond_5

    .line 303
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mCurrentUserView:Landroid/view/View;

    .line 305
    :cond_5
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 333
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v1, :cond_0

    .line 336
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    goto :goto_0

    .line 337
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v1, :cond_3

    .line 338
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    if-nez v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mCurrentUserView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 340
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 342
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 344
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    :cond_3
    :goto_0
    return-void
.end method
