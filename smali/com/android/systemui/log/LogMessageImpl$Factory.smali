.class public final Lcom/android/systemui/log/LogMessageImpl$Factory;
.super Ljava/lang/Object;
.source "LogMessageImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/log/LogMessageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/log/LogMessageImpl$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/systemui/log/LogMessageImpl;
    .locals 22
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    new-instance v21, Lcom/android/systemui/log/LogMessageImpl;

    move-object/from16 v0, v21

    .line 68
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 71
    invoke-static {}, Lcom/android/systemui/log/LogMessageImplKt;->access$getDEFAULT_RENDERER$p()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    const-string v2, "UnknownTag"

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 67
    invoke-direct/range {v0 .. v20}, Lcom/android/systemui/log/LogMessageImpl;-><init>(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZ)V

    return-object v21
.end method
