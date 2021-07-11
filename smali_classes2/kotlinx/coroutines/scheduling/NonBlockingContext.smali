.class public final Lkotlinx/coroutines/scheduling/NonBlockingContext;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/NonBlockingContext;

.field private static final taskMode:Lkotlinx/coroutines/scheduling/TaskMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/NonBlockingContext;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->INSTANCE:Lkotlinx/coroutines/scheduling/NonBlockingContext;

    .line 78
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    sput-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->taskMode:Lkotlinx/coroutines/scheduling/TaskMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTask()V
    .locals 0

    return-void
.end method

.method public getTaskMode()Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 78
    sget-object p0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->taskMode:Lkotlinx/coroutines/scheduling/TaskMode;

    return-object p0
.end method
