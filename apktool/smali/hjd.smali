.class final Lhjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<",
        "Lkhh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhjc;


# direct methods
.method constructor <init>(Lhjc;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lhjd;->a:Lhjc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 3

    .prologue
    .line 323
    check-cast p1, Lkhh;

    .line 1326
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Successfully created new call id: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    iget-object v0, p0, Lhjd;->a:Lhjc;

    .line 2267
    iget-object v0, v0, Lhjc;->a:Lhjb;

    .line 1327
    iget-object v1, p1, Lkhh;->d:[Lkhf;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lkhf;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhjb;->a(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public synthetic b(Llyi;)V
    .locals 4

    .prologue
    .line 323
    check-cast p1, Lkhh;

    .line 2332
    const-string v0, "vclib"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to create new call id: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lhjd;->a:Lhjc;

    .line 3267
    iget-object v0, v0, Lhjc;->a:Lhjb;

    .line 2333
    invoke-interface {v0}, Lhjb;->a()V

    .line 323
    return-void
.end method
