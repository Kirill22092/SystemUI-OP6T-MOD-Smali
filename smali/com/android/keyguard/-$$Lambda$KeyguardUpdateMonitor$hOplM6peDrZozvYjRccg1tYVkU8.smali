.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$hOplM6peDrZozvYjRccg1tYVkU8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$hOplM6peDrZozvYjRccg1tYVkU8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$hOplM6peDrZozvYjRccg1tYVkU8;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$hOplM6peDrZozvYjRccg1tYVkU8;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$hOplM6peDrZozvYjRccg1tYVkU8;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$hOplM6peDrZozvYjRccg1tYVkU8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$onKeyguardVisibilityChanged$5()V

    return-void
.end method
