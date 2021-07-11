.class public final Lcom/android/systemui/log/LogMessageImplKt;
.super Ljava/lang/Object;
.source "LogMessageImpl.kt"


# static fields
.field private static final DEFAULT_RENDERER:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    sget-object v0, Lcom/android/systemui/log/LogMessageImplKt$DEFAULT_RENDERER$1;->INSTANCE:Lcom/android/systemui/log/LogMessageImplKt$DEFAULT_RENDERER$1;

    sput-object v0, Lcom/android/systemui/log/LogMessageImplKt;->DEFAULT_RENDERER:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_RENDERER$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogMessageImplKt;->DEFAULT_RENDERER:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
