.class public final Lbrv;
.super Ldlj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;Landroid/content/Context;Liog;I)V
    .locals 1

    .prologue
    .line 328
    iput-object p1, p0, Lbrv;->a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 329
    sget-object v0, Ldnv;->a:Ldnv;

    iget v0, v0, Ldnv;->l:I

    invoke-direct {p0, p2, p3, p4, v0}, Ldlj;-><init>(Landroid/content/Context;Liog;II)V

    .line 330
    return-void
.end method


# virtual methods
.method public a(Ldns;)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lbrv;->a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    invoke-virtual {p1}, Ldns;->e()Z

    move-result v1

    .line 2320
    iget-boolean v2, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    if-eq v2, v1, :cond_0

    .line 2321
    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    .line 2322
    iget-object v1, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v1}, Lbrw;->notifyDataSetChanged()V

    .line 2323
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b()V

    .line 340
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lbrv;->a:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 1320
    iget-boolean v1, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    if-eqz v1, :cond_0

    .line 1321
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    .line 1322
    iget-object v1, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b:Lbrw;

    invoke-virtual {v1}, Lbrw;->notifyDataSetChanged()V

    .line 1323
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->b()V

    .line 335
    :cond_0
    return-void
.end method
