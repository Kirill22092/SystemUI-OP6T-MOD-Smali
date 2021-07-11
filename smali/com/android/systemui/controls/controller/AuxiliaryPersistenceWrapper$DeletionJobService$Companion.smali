.class public final Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;
.super Ljava/lang/Object;
.source "AuxiliaryPersistenceWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;-><init>()V

    return-void
.end method

.method public static synthetic DELETE_FILE_JOB_ID$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDELETE_FILE_JOB_ID$packages__apps__OPSystemUI__android_common__OPSystemUI_core()I
    .locals 0

    .line 112
    invoke-static {}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->access$getDELETE_FILE_JOB_ID$cp()I

    move-result p0

    return p0
.end method

.method public final getJobForContext(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;->getDELETE_FILE_JOB_ID$packages__apps__OPSystemUI__android_common__OPSystemUI_core()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    add-int/2addr p0, v0

    .line 116
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 118
    invoke-static {}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->access$getWEEK_IN_MILLIS$cp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    const-string p1, "JobInfo.Builder(jobId, c\u2026                 .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
