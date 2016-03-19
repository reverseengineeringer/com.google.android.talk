.class final Lala;
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
        "Lale",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lakz;


# direct methods
.method constructor <init>(Lakz;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lala;->a:Lakz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1440
    new-instance v0, Lale;

    iget-object v1, p0, Lala;->a:Lakz;

    .line 2432
    iget-object v1, v1, Lakz;->a:Lanm;

    .line 1440
    iget-object v2, p0, Lala;->a:Lakz;

    .line 3432
    iget-object v2, v2, Lakz;->b:Lanm;

    .line 1440
    iget-object v3, p0, Lala;->a:Lakz;

    .line 4432
    iget-object v3, v3, Lakz;->c:Lalh;

    .line 1440
    iget-object v4, p0, Lala;->a:Lakz;

    .line 5432
    iget-object v4, v4, Lakz;->d:Lic;

    .line 1440
    invoke-direct {v0, v1, v2, v3, v4}, Lale;-><init>(Lanm;Lanm;Lalh;Lic;)V

    .line 437
    return-object v0
.end method
