.class final Lcwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llap",
        "<",
        "Ljava/lang/Throwable;",
        "Lcwf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcwf;


# direct methods
.method constructor <init>(Lcwf;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcwh;->a:Lcwf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Llbb;
    .locals 1

    .prologue
    .line 170
    check-cast p1, Ljava/lang/Throwable;

    .line 1172
    invoke-static {p1}, Llau;->a(Ljava/lang/Throwable;)Llbb;

    move-result-object v0

    .line 170
    return-object v0
.end method
