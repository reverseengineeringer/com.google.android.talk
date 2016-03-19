.class public final Lddq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leph;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lddq;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1303
    iget-object v0, p0, Lddq;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 2139
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    .line 1303
    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lddq;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 3139
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    .line 1305
    invoke-virtual {v0, v1}, Ldlj;->a(Ljava/lang/String;)V

    .line 1307
    :cond_0
    iget-object v0, p0, Lddq;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 4139
    iput-object v1, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->r:Ldlj;

    .line 1308
    iget-object v0, p0, Lddq;->a:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    .line 5139
    iput-object v1, v0, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->s:Lepa;

    .line 1309
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1315
    return-void
.end method
