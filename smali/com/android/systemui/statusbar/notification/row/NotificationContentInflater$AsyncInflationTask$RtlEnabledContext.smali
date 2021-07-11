.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask$RtlEnabledContext;
.super Landroid/content/ContextWrapper;
.source "NotificationContentInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RtlEnabledContext"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;Landroid/content/Context;)V
    .locals 0

    .line 913
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;)V
    .locals 0

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask$RtlEnabledContext;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 918
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 919
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    return-object p0
.end method
