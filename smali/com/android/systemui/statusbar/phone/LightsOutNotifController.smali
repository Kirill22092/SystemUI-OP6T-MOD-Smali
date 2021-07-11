.class public Lcom/android/systemui/statusbar/phone/LightsOutNotifController;
.super Ljava/lang/Object;
.source "LightsOutNotifController.java"


# instance fields
.field mAppearance:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDisplayId:I

.field private final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mLightsOutNotifView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;-><init>(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mCallback:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$3;-><init>(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mWindowManager:Landroid/view/WindowManager;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mDisplayId:I

    return p0
.end method

.method private destroy()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mCallback:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method private hasActiveNotifications()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->hasActiveNotifications()Z

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mDisplayId:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mCallback:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->updateLightsOutView()V

    return-void
.end method


# virtual methods
.method areLightsOut()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mAppearance:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isShowingDot()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setLightsOutNotifView(Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->destroy()V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->init()V

    :cond_0
    return-void
.end method

.method shouldShowDot()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->areLightsOut()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateLightsOutView()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->shouldShowDot()Z

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->isShowingDot()Z

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mLightsOutNotifView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x2ee

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xfa

    .line 118
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Z)V

    .line 120
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    return-void
.end method
