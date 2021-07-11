.class public Lcom/android/systemui/pip/tv/PipControlsViewController;
.super Ljava/lang/Object;
.source "PipControlsViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipControlsViewController$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PipControlsViewController"


# instance fields
.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/tv/PipControlButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/systemui/pip/tv/PipControlsViewController$Listener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private final mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private final mView:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipManager;Landroid/view/LayoutInflater;Landroid/os/Handler;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsViewController$1;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 85
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsViewController$2;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 92
    new-instance v0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kZf8PkTX4QNE7Vc5zsES51WG3gA;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kZf8PkTX4QNE7Vc5zsES51WG3gA;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 94
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsViewController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsViewController$3;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 114
    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 115
    iput-object p4, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mHandler:Landroid/os/Handler;

    .line 117
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-interface {p1, p2}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->getFullButtonView()Lcom/android/systemui/pip/tv/PipControlButtonView;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    new-instance p2, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$rQPZrjnmUU8eHBhj9PVaj2cMJVs;

    invoke-direct {p2, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$rQPZrjnmUU8eHBhj9PVaj2cMJVs;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->getCloseButtonView()Lcom/android/systemui/pip/tv/PipControlButtonView;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    new-instance p2, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$rqMCDyXd4qEJoGxUNtb2wXHRu3A;

    invoke-direct {p2, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$rqMCDyXd4qEJoGxUNtb2wXHRu3A;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->getPlayPauseButtonView()Lcom/android/systemui/pip/tv/PipControlButtonView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 137
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance p2, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$q5wDnhpgYTIhYtkeUXKZ3KQDbyI;

    invoke-direct {p2, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$q5wDnhpgYTIhYtkeUXKZ3KQDbyI;-><init>(Lcom/android/systemui/pip/tv/PipControlsViewController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/tv/PipControlsViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->updateMediaController()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipManager$MediaListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipControlsViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->updateUserActions()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipControlsViewController;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/pip/tv/PipControlsViewController;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p1
.end method

.method public static synthetic lambda$kZf8PkTX4QNE7Vc5zsES51WG3gA(Lcom/android/systemui/pip/tv/PipControlsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->updateMediaController()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->movePipToFullscreen()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mListener:Lcom/android/systemui/pip/tv/PipControlsViewController$Listener;

    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController$Listener;->onClosed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result p1

    if-nez p1, :cond_2

    .line 145
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateUserActions$3(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 193
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$updateUserActions$4(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 1

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 202
    sget-object p1, Lcom/android/systemui/pip/tv/PipControlsViewController;->TAG:Ljava/lang/String;

    const-string v0, "Failed to send action"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateMediaController()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaController:Landroid/media/session/MediaController;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 159
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->updateUserActions()V

    return-void
.end method

.method private updateUserActions()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/systemui/R$layout;->tv_pip_custom_control:I

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 176
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 181
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 183
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    .line 182
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 189
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 192
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kC7tvkXWtpNyYLWHDbM2CyhHzr4;

    invoke-direct {v6, v3}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$kC7tvkXWtpNyYLWHDbM2CyhHzr4;-><init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V

    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 196
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    new-instance v4, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$1reZdb40mM6nxQSPhdAKH0IMN6M;

    invoke-direct {v4, v0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsViewController$1reZdb40mM6nxQSPhdAKH0IMN6M;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_3
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 207
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const v0, 0x3f0a3d71    # 0.54f

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 211
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 215
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 217
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez v0, :cond_8

    .line 219
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    sget v3, Lcom/android/systemui/R$drawable;->ic_pause_white:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    sget v3, Lcom/android/systemui/R$string;->pip_pause:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    goto :goto_5

    .line 222
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    sget v3, Lcom/android/systemui/R$drawable;->ic_play_arrow_white:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    sget v3, Lcom/android/systemui/R$string;->pip_play:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    .line 228
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 229
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public getView()Lcom/android/systemui/pip/tv/PipControlsView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mView:Lcom/android/systemui/pip/tv/PipControlsView;

    return-object p0
.end method

.method public synthetic lambda$new$0$PipControlsViewController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$PipControlsViewController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$2$PipControlsViewController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsViewController;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsViewController;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;->updateUserActions()V

    return-void
.end method
