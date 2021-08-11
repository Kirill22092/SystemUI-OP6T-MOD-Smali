.class public Lcom/android/systemui/media/MediaControlPanel;
.super Ljava/lang/Object;
.source "MediaControlPanel.java"


# static fields
.field static final ACTION_IDS:[I


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlbumArtRadius:I

.field private mAlbumArtSize:I

.field private mBackgroundColor:I

.field protected final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/media/session/MediaController;

.field private mMediaViewController:Lcom/android/systemui/media/MediaViewController;

.field private mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

.field private final mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

.field private mToken:Landroid/media/session/MediaSession$Token;

.field private mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

.field private final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/android/systemui/R$id;->action0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->loadDimens()V

    new-instance p1, Lcom/android/systemui/media/MediaControlPanel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/MediaControlPanel;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/MediaControlPanel;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtRadius:I

    return p0
.end method

.method private synthetic lambda$bind$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$bind$1(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.settings.panel.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const-string v0, "key_media_session_token"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x10008000

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method static synthetic lambda$bind$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$bind$3(Landroid/media/session/MediaController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private loadDimens()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtRadius:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-le v0, v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr p0, v2

    neg-float v0, v0

    float-to-int v0, v0

    neg-float p0, p0

    float-to-int p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz p3, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    new-instance v1, Lcom/android/systemui/media/SeekBarObserver;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/SeekBarObserver;-><init>(Lcom/android/systemui/media/PlayerViewHolder;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v1}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SeekBarViewModel;->attachTouchHandlers(Landroid/widget/SeekBar;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    return-void
.end method

.method public bind(Lcom/android/systemui/media/MediaData;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getBackgroundColor()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    new-instance v2, Landroid/media/session/MediaController;

    iget-object v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, v4, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    :cond_3
    iput-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$r2fXPXw2z1qXnX31VuekOYH3JxQ;

    invoke-direct {v7, v0, v5}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$r2fXPXw2z1qXnX31VuekOYH3JxQ;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    move v6, v8

    :goto_1
    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/systemui/media/MediaControlPanel;->scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    sget v5, Lcom/android/systemui/R$id;->album_art:I

    invoke-direct {v0, v4, v5, v6}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    sget v5, Lcom/android/systemui/R$id;->album_art:I

    invoke-direct {v0, v2, v5, v6}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    iget-object v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getTitleText()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getArtistText()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v6

    if-nez v6, :cond_8

    sget v6, Lcom/android/systemui/R$drawable;->op_qs_widget_bg_light:I

    goto :goto_3

    :cond_8
    sget v6, Lcom/android/systemui/R$drawable;->op_qs_widget_bg_dark:I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    sget v5, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {v0, v4, v5, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    sget v5, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {v0, v2, v5, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;

    move-object/from16 v9, p1

    invoke-direct {v6, v0, v9}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$-TE2FbF426T83JfnZb2pju5PDfs;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessIcon()Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getId()I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v12}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getId()I

    move-result v12

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v13

    if-nez v13, :cond_9

    move v13, v7

    goto :goto_4

    :cond_9
    move v13, v8

    :goto_4
    if-eqz v13, :cond_a

    move v15, v8

    goto :goto_5

    :cond_a
    const/16 v15, 0x8

    :goto_5
    iget-object v14, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v14}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {v4, v12, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz v13, :cond_b

    const/16 v12, 0x8

    goto :goto_6

    :cond_b
    move v12, v8

    :goto_6
    iget-object v14, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v14}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {v4, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v12

    if-eqz v12, :cond_c

    const v12, 0x3ec28f5c    # 0.38f

    goto :goto_7

    :cond_c
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {v2, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    invoke-virtual {v4, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    iget-object v11, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v12

    xor-int/2addr v12, v7

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v13, :cond_d

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_d
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of v11, v3, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v11, :cond_e

    check-cast v3, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget v11, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v3, v11}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_f
    const-string v3, "MediaControlPanel"

    const-string v10, "device is null. Not binding output chip."

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x1040308

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v5

    move v6, v8

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_11

    array-length v9, v1

    if-ge v6, v9, :cond_11

    aget v9, v1, v6

    iget-object v10, v0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v10, v9}, Lcom/android/systemui/media/PlayerViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/media/MediaAction;

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v11

    if-nez v11, :cond_10

    invoke-virtual {v10, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_b

    :cond_10
    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance v12, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$_SKXzyUYhhL8GMTnpSLM2qnRFFw;

    invoke-direct {v12, v11}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$_SKXzyUYhhL8GMTnpSLM2qnRFFw;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v0, v4, v9, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-direct {v0, v2, v9, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_11
    :goto_c
    array-length v3, v1

    if-ge v6, v3, :cond_12

    aget v3, v1, v6

    invoke-direct {v0, v2, v3, v8}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    aget v3, v1, v6

    invoke-direct {v0, v4, v3, v8}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getController()Landroid/media/session/MediaController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$hrbddZ1-8Mr3EF0WaK5GAsQc9Ds;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public getMediaViewController()Lcom/android/systemui/media/MediaViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/media/PlayerViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->isPlaying(Landroid/media/session/MediaController;)Z

    move-result p0

    return p0
.end method

.method protected isPlaying(Landroid/media/session/MediaController;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public synthetic lambda$bind$0$MediaControlPanel(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$0(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$bind$1$MediaControlPanel(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$1(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$bind$3$MediaControlPanel(Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$3(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->onDestroy()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setListening(Z)V

    return-void
.end method
