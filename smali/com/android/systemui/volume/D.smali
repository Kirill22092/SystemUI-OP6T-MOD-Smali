.class Lcom/android/systemui/volume/D;
.super Ljava/lang/Object;
.source "D.java"


# static fields
.field public static BUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    return-void
.end method
