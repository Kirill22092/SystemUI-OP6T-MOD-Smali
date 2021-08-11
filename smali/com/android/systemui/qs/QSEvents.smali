.class public final Lcom/android/systemui/qs/QSEvents;
.super Ljava/lang/Object;
.source "QSEvents.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQSEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QSEvents.kt\ncom/android/systemui/qs/QSEvents\n*L\n1#1,124:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/QSEvents;

.field private static qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSEvents;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSEvents;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getQsUiEventsLogger()Lcom/android/internal/logging/UiEventLogger;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method
