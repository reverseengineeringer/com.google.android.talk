.class final Lhck;
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
        "Lkia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhkt;

.field final synthetic c:Lhci;


# direct methods
.method constructor <init>(Lhci;Ljava/lang/String;Lhkt;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lhck;->c:Lhci;

    iput-object p2, p0, Lhck;->a:Ljava/lang/String;

    iput-object p3, p0, Lhck;->b:Lhkt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 3

    .prologue
    .line 550
    check-cast p1, Lkia;

    .line 1558
    iget-object v0, p0, Lhck;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "initiateCall for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after resolve"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2121
    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1559
    iget-object v0, p0, Lhck;->c:Lhci;

    .line 3121
    iget-object v0, v0, Lhci;->c:Lhcs;

    .line 1559
    iget-object v1, p1, Lkia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhcs;->a(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lhck;->c:Lhci;

    .line 4121
    iget-object v0, v0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 1560
    iget-object v1, p0, Lhck;->b:Lhkt;

    iget-object v2, p1, Lkia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Lhkt;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public synthetic b(Llyi;)V
    .locals 2

    .prologue
    .line 4553
    iget-object v0, p0, Lhck;->c:Lhci;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lhci;->a(I)V

    .line 550
    return-void
.end method
