.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;
.super Ljava/lang/Object;
.source "NotificationsModule_ProvideNotificationPanelLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->INSTANCE:Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->INSTANCE:Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;
    .locals 1

    .line 22
    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->proxyProvideNotificationPanelLogger()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideNotificationPanelLogger()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;
    .locals 2

    .line 31
    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule;->provideNotificationPanelLogger()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;
    .locals 0

    .line 18
    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->provideInstance()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->get()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    move-result-object p0

    return-object p0
.end method
