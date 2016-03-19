.class final Lioj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Liog;


# direct methods
.method constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lioj;->a:Liog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 1

    .prologue
    .line 216
    instance-of v0, p1, Liov;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Liov;

    invoke-interface {p1}, Liov;->X_()V

    .line 219
    :cond_0
    return-void
.end method
