.class final Laky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavw",
        "<",
        "Lakh",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lakx;


# direct methods
.method constructor <init>(Lakx;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Laky;->a:Lakx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1387
    new-instance v0, Lakh;

    iget-object v1, p0, Laky;->a:Lakx;

    .line 2381
    iget-object v1, v1, Lakx;->a:Lakl;

    .line 1387
    iget-object v2, p0, Laky;->a:Lakx;

    .line 3381
    iget-object v2, v2, Lakx;->b:Lic;

    .line 1387
    invoke-direct {v0, v1, v2}, Lakh;-><init>(Lakl;Lic;)V

    .line 384
    return-object v0
.end method
