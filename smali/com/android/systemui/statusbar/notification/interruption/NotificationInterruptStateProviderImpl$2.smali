.class Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;
.super Landroid/database/ContentObserver;
.source "NotificationInterruptStateProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;-><init>(Landroid/content/ContentResolver;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$2;->this$0:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->access$202(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;Z)Z

    return-void
.end method
