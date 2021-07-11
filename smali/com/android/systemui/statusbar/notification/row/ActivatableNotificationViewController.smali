.class public Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
.super Ljava/lang/Object;
.source "ActivatableNotificationViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private final mExpandableOutlineViewController:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mNeedsDimming:Z

.field private mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

.field private final mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mExpandableOutlineViewController:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 51
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mNeedsDimming:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/phone/DoubleTapHelper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    return-object p0
.end method

.method private synthetic lambda$init$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeActive()V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$init$1(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mNeedsDimming:Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mExpandableOutlineViewController:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;->init()V

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationViewController$r3sTjOy8fdG9h_zptjU2waOJUhM;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationViewController$r3sTjOy8fdG9h_zptjU2waOJUhM;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 75
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$YDw8IXhiUvHyYCObyXXnYJSdUnc;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$YDw8IXhiUvHyYCObyXXnYJSdUnc;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ELE-e-9GisA3PeCbD7mpobFwmaM;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 76
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;

    invoke-direct {v6, v1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PkPBcaaRR8KHImTlnKW995Xmvx8;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTouchHandler(Lcom/android/systemui/Gefingerpoken;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationViewController$tnb8yJViiBqHZ1MPl8MWWadMlQ4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ActivatableNotificationViewController$tnb8yJViiBqHZ1MPl8MWWadMlQ4;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnDimmedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnDimmedListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mView:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public synthetic lambda$init$0$ActivatableNotificationViewController(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->lambda$init$0(Z)V

    return-void
.end method

.method public synthetic lambda$init$1$ActivatableNotificationViewController(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->lambda$init$1(Z)V

    return-void
.end method
