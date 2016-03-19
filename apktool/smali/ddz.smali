.class public final Lddz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lddz;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lddz;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 1139
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->o:Z

    .line 1119
    iget-object v0, p0, Lddz;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    .line 1121
    invoke-virtual {v1}, Liaj;->a()Liaj;

    move-result-object v1

    const-class v2, Liap;

    new-instance v3, Liaq;

    invoke-direct {v3}, Liaq;-><init>()V

    .line 1125
    invoke-virtual {v3}, Liaq;->b()Liaq;

    move-result-object v3

    .line 1126
    invoke-virtual {v3}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v3

    .line 1122
    invoke-virtual {v1, v2, v3}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v1

    .line 2139
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Liaj;)V

    .line 1127
    return-void
.end method
