.class public interface abstract Lcom/android/systemui/dagger/SystemUIRootComponent;
.super Ljava/lang/Object;
.source "SystemUIRootComponent.java"


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
.end method

.method public abstract createDumpManager()Lcom/android/systemui/dump/DumpManager;
.end method

.method public abstract createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
.end method

.method public abstract createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;
.end method

.method public abstract getInitController()Lcom/android/systemui/InitController;
.end method

.method public abstract inject(Landroid/content/ContentProvider;)V
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
.end method

.method public abstract inject(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
.end method

.method public abstract provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
.end method
