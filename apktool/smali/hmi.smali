.class final Lhmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhmj",
        "<TM;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmf;


# direct methods
.method constructor <init>(Lhmf;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lhmi;->a:Lhmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    check-cast p2, Llyi;

    .line 1056
    iget-object v0, p0, Lhmi;->a:Lhmf;

    invoke-virtual {v0, p1, p2}, Lhmf;->b(Ljava/lang/String;Llyi;)V

    .line 52
    return-void
.end method
