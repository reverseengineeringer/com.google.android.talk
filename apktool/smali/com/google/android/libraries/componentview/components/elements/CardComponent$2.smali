.class Lcom/google/android/libraries/componentview/components/elements/CardComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/components/elements/CardComponent;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$2;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$2;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    .line 1055
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->e:Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;->a(Z)Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;

    .line 233
    return-void
.end method
