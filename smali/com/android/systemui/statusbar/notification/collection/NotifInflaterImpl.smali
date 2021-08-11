.class public Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;
.super Ljava/lang/Object;
.source "NotifInflaterImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;


# instance fields
.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;)Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    return-object p0
.end method

.method private getDismissCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-object v0
.end method

.method private requireBinder()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "NotificationRowBinder must be attached before using NotifInflaterImpl."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private wrapInflationCallback(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V

    return-object v0
.end method


# virtual methods
.method public inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->requireBinder()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->getDismissCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->wrapInflationCallback(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public rebindViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V

    return-void
.end method

.method public setRowBinder(Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    return-void
.end method
