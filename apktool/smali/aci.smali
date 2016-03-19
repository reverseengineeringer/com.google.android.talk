.class final Laci;
.super Lhv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhv",
        "<",
        "Ljava/lang/String;",
        "Lav;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lach;


# direct methods
.method public constructor <init>(Lach;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Laci;->a:Lach;

    .line 179
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lhv;-><init>(I)V

    .line 180
    return-void
.end method


# virtual methods
.method protected synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 177
    check-cast p3, Lav;

    check-cast p4, Lav;

    .line 1186
    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    if-eq p3, p4, :cond_1

    .line 1187
    :cond_0
    iget-object v0, p0, Laci;->a:Lach;

    .line 2045
    iget-object v0, v0, Lach;->f:Lbz;

    .line 1187
    invoke-virtual {v0, p3}, Lbz;->a(Lav;)Lbz;

    .line 177
    :cond_1
    return-void
.end method
