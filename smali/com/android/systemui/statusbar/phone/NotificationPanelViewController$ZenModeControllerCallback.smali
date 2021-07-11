.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenModeControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 0

    .line 4126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method
