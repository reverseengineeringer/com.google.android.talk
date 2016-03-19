.class final Leid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfin",
        "<",
        "Lglp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejc;

.field final synthetic b:Leia;


# direct methods
.method constructor <init>(Leia;Lejc;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Leid;->b:Leia;

    iput-object p2, p0, Leid;->a:Lejc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lfim;)V
    .locals 4

    .prologue
    .line 222
    check-cast p1, Lglp;

    .line 1225
    iget-object v0, p0, Leid;->b:Leia;

    invoke-interface {p1}, Lglp;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {p1}, Lglp;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v3, p0, Leid;->a:Lejc;

    .line 2033
    invoke-virtual {v0, v1, v2, v3}, Leia;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lejc;)V

    .line 222
    return-void
.end method
