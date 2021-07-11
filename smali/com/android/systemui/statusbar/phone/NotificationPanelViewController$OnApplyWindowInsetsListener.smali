.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4396
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4396
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 4398
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-object p2
.end method
