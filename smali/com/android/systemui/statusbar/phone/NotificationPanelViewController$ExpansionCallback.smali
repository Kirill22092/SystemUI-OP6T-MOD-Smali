.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpansionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4236
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4236
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public setEmptyDragAmount(F)V
    .locals 2

    .line 4238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 4239
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method
