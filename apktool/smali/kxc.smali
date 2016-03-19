.class final Lkxc;
.super Lkwz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkwz",
        "<TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxa;


# direct methods
.method constructor <init>(Lkxa;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lkxc;->a:Lkxa;

    invoke-direct {p0}, Lkwz;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkwt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkwt;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lkxc;->a:Lkxa;

    .line 323
    invoke-virtual {v0}, Lkxa;->a()Ljava/util/Map;

    move-result-object v0

    .line 1213
    sget-object v1, Lkwy;->a:Lkwy;

    .line 322
    invoke-static {v0, v1}, Laal;->a(Ljava/util/Map;Lkog;)Lkwt;

    move-result-object v0

    return-object v0
.end method
