.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessMirror:Landroid/view/View;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field protected mBrightnessView:Landroid/view/View;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCachedSpecs:Ljava/lang/String;

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field protected mDatePanel:Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mDivider:Landroid/view/View;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field protected mExpanded:Z

.field protected mFooter:Landroid/view/View;

.field private mFooterMarginStartHorizontal:I

.field private mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHeaderContainer:Landroid/view/ViewGroup;

.field private mHorizontalContentContainer:Landroid/widget/LinearLayout;

.field private mHorizontalLinearLayout:Landroid/widget/LinearLayout;

.field private mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastOrientation:I

.field protected mListening:Z

.field protected final mMediaHost:Lcom/android/systemui/media/MediaHost;

.field private mMediaLastVisible:Z

.field private mMediaTotalBottomMargin:I

.field private mMediaVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMovableContentStartIndex:I

.field private mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUsingHorizontalLayout:Z

.field protected mUsingMediaPlayer:Z

.field private mVisualMarginEnd:I

.field private mVisualMarginStart:I

.field private mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

.field protected mWidgetLayout:Landroid/view/View;

.field private mWidgetListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 4

    .line 202
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const-string p2, ""

    .line 117
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 124
    new-instance p2, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 125
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 p2, 0x1

    .line 157
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaLastVisible:Z

    const/4 v1, -0x1

    .line 186
    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    .line 203
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->quick_settings_bottom_margin_media:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    .line 206
    iput-object p6, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 207
    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$QSPanel$eQ8pVxxhUsNJKcJOLQN4uzlXkuA;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$QSPanel$eQ8pVxxhUsNJKcJOLQN4uzlXkuA;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {p6, v2}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 211
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 212
    iput-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 213
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 214
    iput-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 215
    iput-object p7, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 217
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addViewsAboveTiles()V

    .line 220
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 223
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz p3, :cond_0

    .line 224
    new-instance p3, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 225
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 227
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 229
    new-instance p3, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    .line 230
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 232
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 235
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 236
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/android/systemui/R$dimen;->qqs_media_spacing:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 237
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 238
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/16 p3, 0x10

    .line 239
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 240
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    iget-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 243
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->initMediaHostState()V

    .line 248
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_page_indicator:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PageIndicator;

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 250
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 251
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->op_control_margin_space1:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 252
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addBrightnessView()V

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addSecurityFooter()V

    .line 260
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 261
    new-instance p2, Lcom/android/systemui/qs/QSTileRevealController;

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/systemui/qs/QSTileRevealController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object p0
.end method

.method private fireScanStateChanged(Z)V
    .locals 0

    .line 1300
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 1301
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    .line 1288
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 1289
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 1295
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    return-object p0
.end method

.method private getTilesSpecs()Ljava/lang/String;
    .locals 1

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$EbHBtJlVwGzmqefWXJDEYuyGlcQ;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSPanel$EbHBtJlVwGzmqefWXJDEYuyGlcQ;

    .line 1031
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 1032
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1258
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_1

    .line 1259
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 3

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1248
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_2

    return-void

    .line 1251
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 1252
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1253
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1254
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    return-void
.end method

.method static synthetic lambda$getTilesSpecs$1(Lcom/android/systemui/qs/QSPanel$TileRecord;)Ljava/lang/String;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private logTiles()V
    .locals 5

    const/4 v0, 0x0

    .line 1280
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 1282
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x1

    .line 1283
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1282
    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldUseHorizontalLayout()Z
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 849
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    goto :goto_0

    :cond_0
    move v1, v0

    .line 852
    :goto_0
    instance-of v2, p1, Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v1, v3

    .line 858
    :cond_1
    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/2addr v1, v3

    .line 861
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p2, :cond_4

    .line 862
    invoke-virtual {p2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p2

    .line 863
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 864
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 866
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v0, 0x3fcccccd    # 1.6f

    .line 867
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 868
    invoke-direct {p0, p2, v4, v3}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_2

    .line 875
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    .line 877
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, -0x2

    .line 880
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    const/4 v0, 0x0

    .line 882
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 884
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/2addr v1, v3

    .line 887
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 892
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :cond_5
    return-void
.end method

.method private switchTileLayout(Z)Z
    .locals 9

    .line 743
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 744
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 745
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    .line 756
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-ne v0, v4, :cond_3

    if-nez p1, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mMediaLastVisible:Z

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    .line 757
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchTileLayout: horizontal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", force="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mediaVisible="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaLastVisible:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "QSPanel"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaLastVisible:Z

    .line 764
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v0, :cond_5

    .line 765
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p1, Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_6

    .line 766
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v4, Landroid/view/View;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    :goto_3
    if-eqz v0, :cond_7

    .line 767
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_7
    move-object v5, p0

    :goto_4
    if-eqz v0, :cond_8

    .line 768
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    goto :goto_5

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    :goto_5
    if-eqz v4, :cond_a

    .line 769
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-ne v7, v8, :cond_9

    if-eq v4, v7, :cond_a

    .line 774
    :cond_9
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 777
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/QSPanel;->switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->reAttachMediaHost()V

    .line 779
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p1, :cond_b

    .line 780
    invoke-interface {p1, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 781
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 782
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v3, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 783
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_6

    .line 786
    :cond_b
    iput-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 788
    instance-of p1, v6, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p1, :cond_c

    .line 789
    move-object p1, v6

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 793
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setIsUseMediaLayout(Z)V

    .line 797
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 798
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v6, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 799
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->needsDynamicRowsAndColumns()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-nez v0, :cond_e

    .line 804
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz p1, :cond_e

    if-nez v1, :cond_e

    .line 805
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->quick_settings_max_rows:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 806
    invoke-interface {v6, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    goto :goto_8

    :cond_e
    if-eqz v0, :cond_f

    const/4 p1, 0x2

    goto :goto_7

    :cond_f
    move p1, v2

    .line 808
    :goto_7
    invoke-interface {v6, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    :goto_8
    if-eqz v0, :cond_10

    const/4 p1, 0x3

    goto :goto_9

    :cond_10
    const/16 p1, 0x64

    .line 812
    :goto_9
    invoke-interface {v6, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMaxColumns(I)Z

    .line 814
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    .line 815
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 816
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaDisappearParameters()V

    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins()V

    .line 819
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateHorizontalLinearLayoutMargins()V

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    return v2
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-ne p0, p2, :cond_0

    .line 898
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, p3, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 900
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 907
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p3, "QSPanel"

    const-string/jumbo v0, "switchToParent: exception caught."

    .line 909
    invoke-static {p3, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateBrightnessViewParams()V
    .locals 2

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1588
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->brightness_mirror_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1590
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 1591
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1592
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1594
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->forceLayout()V

    return-void
.end method

.method private updateDividerMargin()V
    .locals 3

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1429
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateFooterMargin()V
    .locals 3

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1368
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1369
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1372
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method private updateHorizontalLinearLayoutMargins()V
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 829
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 830
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateMediaDisappearParameters()V
    .locals 6

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 352
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 356
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 358
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v1, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    const v1, 0x3f19999a    # 0.6f

    .line 359
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 364
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 366
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const v4, 0x3f866666    # 1.05f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 367
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    .line 369
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setFadeStartPosition(F)V

    .line 370
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearStart(F)V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 624
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method private updateTileLayoutMargins()V
    .locals 8

    .line 1400
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 1401
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1407
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x1fe

    if-lt v1, v2, :cond_0

    .line 1408
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    .line 1409
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_qs_paged_tile_layout_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v7, 0x0

    move-object v2, p0

    move v6, v0

    .line 1408
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;IIII)V

    .line 1414
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateTileLayoutMargins(II)V
    .locals 0

    .line 1394
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    .line 1395
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 1396
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    .line 499
    invoke-static {p2, p0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected addBrightnessView()V
    .locals 8

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessViewParams()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSeekBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 316
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v1, Lcom/android/systemui/R$id;->brightness_level:I

    .line 317
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->brightness_icon:I

    .line 318
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 319
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/settings/ToggleSlider;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-void
.end method

.method protected addSecurityFooter()V
    .locals 2

    .line 276
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 278
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter;->setOpQSWidgetAdapter(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;)V

    :cond_0
    return-void
.end method

.method protected addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
    .locals 1

    .line 1141
    new-instance v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 1142
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 1143
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 1144
    new-instance p1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 1182
    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 1183
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 1184
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 1185
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 1186
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesSpecs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 1189
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_0

    .line 1190
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    :cond_0
    return-object v0
.end method

.method protected addViewsAboveTiles()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_qs_date_time_panel_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDatePanel:Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    .line 295
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_qs_widget_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetLayout:Landroid/view/View;

    .line 299
    sget v1, Lcom/android/systemui/R$id;->op_qs_widget_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 300
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 301
    new-instance v0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1306
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1309
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1310
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1223
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1129
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    return-object p0
.end method

.method protected createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_paged_tile_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 329
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method protected createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 0

    .line 1121
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    return-object p0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1117
    iget-object p0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Tile records:"

    .line 1505
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1507
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_0

    const-string v1, "    "

    .line 1508
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    .line 1336
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QSPanel"

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getMediaHost()Lcom/android/systemui/media/MediaHost;
    .locals 0

    .line 1473
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    return-object p0
.end method

.method public getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;
    .locals 0

    .line 1579
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    return-object p0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object p0
.end method

.method public getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    return-object p0
.end method

.method public getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    .line 1321
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1322
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-ne v1, p1, :cond_0

    .line 1323
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2

    .line 1231
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 1232
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1237
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 1238
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1240
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    :goto_1
    return-void
.end method

.method protected initMediaHostState()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaDisappearParameters()V

    .line 341
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    return-void
.end method

.method public isExpanded()Z
    .locals 0

    .line 1013
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method public isShowingCustomize()Z
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$QSPanel(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method protected needsDynamicRowsAndColumns()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 437
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 438
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qs_show_brightness"

    .line 439
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 450
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->setListening(Z)V

    :cond_2
    return-void
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .locals 0

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 707
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 713
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    .line 715
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    if-eq p1, v0, :cond_1

    .line 716
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    const/4 p1, 0x1

    .line 721
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessViewParams()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 458
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 466
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    if-eqz v0, :cond_4

    .line 476
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->setListening(Z)V

    .line 479
    :cond_4
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 731
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 732
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    .line 733
    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    const/4 v0, 0x1

    .line 734
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v1, :cond_0

    .line 380
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    :cond_1
    const/16 v0, 0x2710

    .line 391
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    rsub-int p2, p2, 0x2710

    const/high16 v1, 0x40000000    # 2.0f

    .line 397
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setExcessHeight(I)V

    move p2, v0

    .line 400
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 408
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    .line 409
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 411
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    .line 414
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 415
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onMediaVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    .line 270
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 271
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "qs_show_brightness"

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 3

    .line 503
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1125
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected reAttachMediaHost()V
    .locals 4

    .line 923
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 927
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 928
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 929
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_7

    if-eqz v3, :cond_2

    .line 932
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 934
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 935
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 936
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    .line 937
    :goto_1
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v0, :cond_4

    const v3, 0x3fb33333    # 1.4f

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 942
    :goto_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v0, :cond_5

    .line 947
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 948
    :cond_5
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    sub-int v2, v0, p0

    :cond_6
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_7
    return-void
.end method

.method public refreshAllTiles()V
    .locals 2

    const-string v0, "QSPanel"

    const-string v1, "refreshAllTiles"

    .line 1065
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1070
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 1072
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_2

    .line 1073
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    :cond_2
    return-void
.end method

.method public setBrightnessListening(Z)V
    .locals 2

    .line 1053
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setListeningBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1058
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    :goto_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 524
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 526
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    return-void
.end method

.method public setContentMargins(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1355
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    .line 1356
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    .line 1357
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins(II)V

    .line 1359
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins()V

    .line 1360
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 1361
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v0, :cond_0

    return-void

    .line 1264
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 1265
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1267
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    .line 981
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 982
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(ZLjava/lang/String;)V

    .line 984
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 985
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    .line 986
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 988
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x6f

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 989
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_3

    .line 990
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 993
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 995
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hideNoAnimation()V

    return-void

    .line 998
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    goto :goto_0

    .line 1001
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1002
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    :goto_0
    return-void
.end method

.method setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1272
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1273
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 1276
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1480
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 1

    .line 597
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 598
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 603
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p2, :cond_1

    .line 605
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_1
    return-void
.end method

.method public setIsExpanding(Z)V
    .locals 0

    .line 1571
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_0

    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setIsExpanding(Z)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 1017
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 1024
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz p1, :cond_2

    .line 1025
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_2
    return-void
.end method

.method public setListening(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1036
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_1

    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1484
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 1

    .line 1007
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 1008
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    :cond_0
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->updateRevealedTiles(Ljava/util/Collection;)V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1106
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 1107
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 1110
    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 1111
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 1112
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 1137
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    .line 1094
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 5

    const/4 v0, 0x0

    .line 1078
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 1079
    aget v3, p3, v2

    .line 1080
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1082
    new-instance v4, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 1083
    iput-object p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 1084
    aget p2, p3, v0

    sub-int p2, v1, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 1085
    aget p2, p3, v2

    sub-int p2, v3, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 1087
    aput v1, p3, v0

    .line 1088
    aput v3, p3, v2

    .line 1090
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    .line 1340
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    :cond_0
    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 3

    const-string v0, "quick_edit"

    const-string v1, ""

    const-string v2, "1"

    .line 1199
    invoke-static {v0, v1, v2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method switchTileLayout()Z
    .locals 1

    const/4 v0, 0x0

    .line 738
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    move-result p0

    return p0
.end method

.method public updateBrightnessMirror()V
    .locals 3

    .line 953
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 954
    sget v0, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 955
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 956
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 957
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 958
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    .line 964
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/BrightnessController;->setMirrorView(Landroid/view/View;)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSeekBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateThemeColor()V

    return-void
.end method

.method protected updateMargins(Landroid/view/View;II)V
    .locals 0

    .line 1466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1467
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1468
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1469
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1422
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1423
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateMediaHostContentMargins()V
    .locals 3

    .line 1436
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1447
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1449
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 1451
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_layout_margin_side:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1453
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected updatePadding()V
    .locals 5

    .line 684
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 685
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 686
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 694
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 695
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 699
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    .line 701
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_panel_padding_bottom:I

    .line 702
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 699
    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public updateResources()V
    .locals 5

    const-string v0, "QSPanel"

    const-string/jumbo v1, "updateResources"

    .line 641
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 643
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 644
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_footer_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    .line 649
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    .line 666
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 668
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDatePanel:Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    .line 669
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->needLargeQSClock(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 671
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetLayout:Landroid/view/View;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    move v1, v3

    .line 672
    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 678
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_6

    .line 679
    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_6
    return-void
.end method

.method public updateThemeColor()V
    .locals 9

    .line 540
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 542
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    :goto_0
    const/16 v1, 0xd

    .line 544
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const/16 v2, 0xa

    .line 545
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const/16 v3, 0x9

    .line 546
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 547
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getThumbBackground()I

    move-result v4

    const/16 v5, 0xb

    .line 548
    invoke-static {v5}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v5

    .line 551
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 552
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    move v5, v2

    .line 557
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 558
    sget v7, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/settings/ToggleSeekBar;

    .line 559
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 560
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 561
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v7, 0x0

    .line 563
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->brightness_level:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 568
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 569
    sget v7, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/settings/ToggleSeekBar;

    .line 570
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v8, Lcom/android/systemui/R$id;->brightness_mirror_frame:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 571
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 572
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 573
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->brightness_level:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->updateThemeColor()V

    :cond_3
    return-void
.end method
