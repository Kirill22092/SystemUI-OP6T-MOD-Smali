.class public final Lcom/android/systemui/backup/BackupHelper$Companion;
.super Ljava/lang/Object;
.source "BackupHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/backup/BackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/backup/BackupHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getControlsDataLock()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/android/systemui/backup/BackupHelper;->access$getControlsDataLock$cp()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
